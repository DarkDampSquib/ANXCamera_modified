.class public Lmiui/upnp/service/host/IUpnpHostService$Default;
.super Ljava/lang/Object;
.source "IUpnpHostService.java"

# interfaces
.implements Lmiui/upnp/service/host/IUpnpHostService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/host/IUpnpHostService;
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

.method public register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V
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

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
