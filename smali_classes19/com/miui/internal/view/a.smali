.class Lcom/miui/internal/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/CheckWidgetDrawableAnims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/a;->j:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/a;->j:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->b(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    return-void
.end method
