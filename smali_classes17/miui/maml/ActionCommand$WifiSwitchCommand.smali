.class Lmiui/maml/ActionCommand$WifiSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiSwitchCommand"
.end annotation


# instance fields
.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Lmiui/maml/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    const-string/jumbo v1, "wifi_state"

    invoke-direct {p0, p1, v1, v0}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/ActionCommand$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/ActionCommand$WifiStateTracker;-><init>(Lmiui/maml/ActionCommand$1;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->update()V

    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v1, v0}, Lmiui/maml/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v2, v0}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    iget-object v3, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    invoke-virtual {v2, v0, v3}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->update()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .locals 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    check-cast v0, Lmiui/maml/ActionCommand$WifiStateTracker;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p0, v2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    nop

    :goto_1
    return-void
.end method
