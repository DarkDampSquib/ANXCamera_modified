.class public Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Default;
.super Ljava/lang/Object;
.source "IUpnpControlPointService.java"

# interfaces
.implements Lmiui/upnp/service/controlpoint/IUpnpControlPointService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/service/handler/IInvokeCompletionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startScan(Ljava/util/List;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IScanListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;",
            "Lmiui/upnp/service/handler/ICompletionHandler;",
            "Lmiui/upnp/service/handler/IScanListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public stopScan(Lmiui/upnp/service/handler/ICompletionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public subscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ISubscribeCompletionHandler;Lmiui/upnp/service/handler/IEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unsubscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ICompletionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
