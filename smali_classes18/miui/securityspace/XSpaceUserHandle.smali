.class public Lmiui/securityspace/XSpaceUserHandle;
.super Ljava/lang/Object;
.source "XSpaceUserHandle.java"


# static fields
.field public static final EXTRA_AUTH_CALL_XSPACE:Ljava/lang/String; = "android.intent.extra.auth_to_call_xspace"

.field public static final FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final OWNER_SHARED_USER_GID:I

.field public static final USER_XSPACE:I = 0x3e7

.field public static final XSPACE_ICON_MASK_ID:I = 0x110700b1

.field public static final XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetXSpaceUserId(II)I
    .locals 1

    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    return v0

    :cond_0
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return p1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isSelfXSpaceUser()Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isUidBelongtoXSpace(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isXSpaceUser(Landroid/content/pm/UserInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXSpaceUser(Landroid/os/UserHandle;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXSpaceUserCalling()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isXSpaceUserFlag(I)Z
    .locals 2

    const/high16 v0, 0x800000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXSpaceUserId(I)Z
    .locals 1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
