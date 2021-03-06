.class public Lmiui/maml/animation/interpolater/InterpolatorHelper;
.super Ljava/lang/Object;
.source "InterpolatorHelper.java"


# static fields
.field private static final VAR_RATIO:Ljava/lang/String; = "__ratio"


# instance fields
.field private mEaseFunExp:Lmiui/maml/data/Expression;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRatioVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p4}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/animation/interpolater/InterpolatorFactory;->create(Ljava/lang/String;[Lmiui/maml/data/Expression;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, p3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const/4 v1, 0x1

    const-string v2, "__ratio"

    invoke-direct {v0, v2, p1, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lmiui/maml/data/IndexedVariable;

    :cond_0
    return-void
.end method

.method public static create(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/animation/interpolater/InterpolatorHelper;
    .locals 4

    const-string v0, "easeType"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "easeExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "easeParamsExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Lmiui/maml/animation/interpolater/InterpolatorHelper;

    invoke-direct {v3, p0, v0, v1, v2}, Lmiui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public get(F)F
    .locals 3

    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_1
    return p1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
