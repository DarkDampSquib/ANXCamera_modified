.class public abstract Lmiui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/VariableBinder$Variable;,
        Lmiui/maml/data/VariableBinder$TypedValue;
    }
.end annotation


# instance fields
.field private mDependency:Ljava/lang/String;

.field protected mFinished:Z

.field protected mName:Ljava/lang/String;

.field protected mPaused:Z

.field protected mQueryAtStart:Z

.field private mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mTrigger:Lmiui/maml/CommandTrigger;

.field protected mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/data/VariableBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    const-string v1, "dependency"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    const-string/jumbo v1, "queryAtStart"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1, v0}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    :cond_0
    return-void
.end method


# virtual methods
.method public final accept(Lmiui/maml/data/VariableBinderVisitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lmiui/maml/data/VariableBinderVisitor;->visit(Lmiui/maml/data/VariableBinder;)V

    return-void
.end method

.method protected addVariable(Lmiui/maml/data/VariableBinder$Variable;)V
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    return-void
.end method

.method protected getContext()Lmiui/maml/ScreenContext;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVariables()Lmiui/maml/data/Variables;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->startQuery()V

    :cond_1
    return-void
.end method

.method protected loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2

    new-instance v0, Lmiui/maml/data/VariableBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/VariableBinder$1;-><init>(Lmiui/maml/data/VariableBinder;)V

    const-string v1, "Variable"

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onUpdateComplete()V
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    return-void
.end method

.method public setQueryCompleteListener(Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/data/VariableBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    return-void
.end method

.method public startQuery()V
    .locals 0

    return-void
.end method

.method public tick()V
    .locals 0

    return-void
.end method
