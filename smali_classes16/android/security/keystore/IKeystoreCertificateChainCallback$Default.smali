.class public Landroid/security/keystore/IKeystoreCertificateChainCallback$Default;
.super Ljava/lang/Object;
.source "IKeystoreCertificateChainCallback.java"

# interfaces
.implements Landroid/security/keystore/IKeystoreCertificateChainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/IKeystoreCertificateChainCallback;
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

.method public onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeymasterCertificateChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
