.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessage$aRPnqqKzd_0-r7d0L-yxEGwwqhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$aRPnqqKzd_0-r7d0L-yxEGwwqhc;->f$0:Landroid/telephony/ims/RcsMessage;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$aRPnqqKzd_0-r7d0L-yxEGwwqhc;->f$0:Landroid/telephony/ims/RcsMessage;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsMessage;->lambda$getSubscriptionId$0$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
