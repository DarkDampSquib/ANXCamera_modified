.class Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;
.super Lmiui/telephony/SubscriptionManager;
.source "SubscriptionManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;-><init>()V

    return-void
.end method

.method protected static logException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "SubscriptionAndroidImpl"

    const-string v1, "method reflection failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method protected addOnSubscriptionsChangedListenerInternal()V
    .locals 0

    return-void
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAllSubscriptionInfoListInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultDataSlotId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSlotId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultSlotIdInternal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSmsSubscriptionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultVoiceSlotId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultVoiceSubscriptionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlotIdForSubscription(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubscriptionIdForSlot(I)I
    .locals 1

    sget v0, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method

.method public getSubscriptionInfoCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSubscriptionInfoListInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected removeOnSubscriptionsChangedListenerInternal()V
    .locals 0

    return-void
.end method

.method public setDefaultDataSlotId(I)V
    .locals 0

    return-void
.end method

.method public setDefaultSmsSubscriptionId(I)V
    .locals 0

    return-void
.end method

.method public setDefaultVoiceSlotId(I)V
    .locals 0

    return-void
.end method
