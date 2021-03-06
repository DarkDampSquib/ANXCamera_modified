.class public Lmiui/slide/SlideManagerService;
.super Lmiui/slide/ISlideManagerService$Stub;
.source "SlideManagerService.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.slide.SlideManagerService"

.field private static final TAG:Ljava/lang/String; = "SlideManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lmiui/slide/ISlideManagerService$Stub;-><init>()V

    iput-object p1, p0, Lmiui/slide/SlideManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lmiui/slide/SlideManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/slide/SlideCloudConfigHelper;->initConfig(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmiui/slide/SlideManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump miui.slide.SlideManagerService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->getInstance()Lmiui/slide/SlideCoverEventManager;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1, p2, p3}, Lmiui/slide/SlideCoverEventManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAppSlideConfig(Ljava/lang/String;I)Lmiui/slide/AppSlideConfig;
    .locals 2

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/slide/SlideCloudConfigHelper;->getAppSlideConfigs(Ljava/lang/String;)Lmiui/slide/AppSlideConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lmiui/slide/AppSlideConfig;

    invoke-direct {v1}, Lmiui/slide/AppSlideConfig;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getCameraStatus()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/slide/SlideCameraMonitor;->isFrontCameraOpening()Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/slide/SlideCameraMonitor;->isBackCameraOpening()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/slide/SlideCameraMonitor;->isCameraRecording()Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->getInstance()Lmiui/slide/SlideCoverEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/slide/SlideCoverEventManager;->registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->getInstance()Lmiui/slide/SlideCoverEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/slide/SlideCoverEventManager;->unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V

    return-void
.end method
