.class public Lmiui/util/HandyModeUtils;
.super Ljava/lang/Object;
.source "HandyModeUtils.java"


# static fields
.field public static final DEFAULT_IS_ENTER_DIRECT:Z

.field static SUPPORTED:Z

.field private static volatile sInstance:Lmiui/util/HandyModeUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.miui.has_handy_mode_sf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/HandyModeUtils;->SUPPORTED:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getScreenSize()F

    move-result v0

    iput v0, p0, Lmiui/util/HandyModeUtils;->mScreenSize:F

    return-void
.end method

.method private calcScreenSizeToScale(F)F
    .locals 1

    iget v0, p0, Lmiui/util/HandyModeUtils;->mScreenSize:F

    div-float v0, p1, v0

    return v0
.end method

.method private getDefaultScreenSize()F
    .locals 2

    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getScreenSize()F

    move-result v0

    const/high16 v1, 0x40900000    # 4.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40600000    # 3.5f

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;
    .locals 2

    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    if-nez v0, :cond_1

    const-class v0, Lmiui/util/HandyModeUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/util/HandyModeUtils;

    invoke-direct {v1, p0}, Lmiui/util/HandyModeUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    return-object v0
.end method

.method private getScreenSize()F
    .locals 6

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    return v4
.end method

.method public static isFeatureVisible()Z
    .locals 1

    sget-boolean v0, Lmiui/util/HandyModeUtils;->SUPPORTED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getScale()F
    .locals 2

    invoke-virtual {p0}, Lmiui/util/HandyModeUtils;->getSize()F

    move-result v0

    invoke-direct {p0, v0}, Lmiui/util/HandyModeUtils;->calcScreenSizeToScale(F)F

    move-result v1

    return v1
.end method

.method public getSize()F
    .locals 4

    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getDefaultScreenSize()F

    move-result v0

    iget-object v1, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handy_mode_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/util/HandyModeUtils;->isValidSize(F)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public hasShowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnable()Z
    .locals 1

    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/util/HandyModeUtils;->isHandyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnterDirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHandyModeEnabled()Z
    .locals 3

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "handy_mode_state"

    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isValidSize(F)Z
    .locals 2

    invoke-direct {p0, p1}, Lmiui/util/HandyModeUtils;->calcScreenSizeToScale(F)F

    move-result v0

    const v1, 0x3f6147ae    # 0.88f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnterDirect(Z)V
    .locals 2

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_enter_direct"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public setHandyModeStateToSettings(Z)V
    .locals 3

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method public setSize(F)V
    .locals 3

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_size"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method
