.class Lmiui/maml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchAction"
.end annotation


# instance fields
.field public mCommand:Lmiui/maml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mIntentInfo:Lmiui/maml/util/IntentInfo;

.field public mTrigger:Lmiui/maml/CommandTrigger;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v3, v2}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_1
    return-void
.end method
