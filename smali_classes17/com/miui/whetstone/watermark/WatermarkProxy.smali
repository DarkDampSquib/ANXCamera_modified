.class public final Lcom/miui/whetstone/watermark/WatermarkProxy;
.super Ljava/lang/Object;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkProxy"

.field private static sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/whetstone/watermark/WatermarkProxy;
    .locals 2

    const-class v0, Lcom/miui/whetstone/watermark/WatermarkProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/whetstone/watermark/WatermarkProxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    :cond_0
    sget-object v1, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .locals 2

    const-string v0, "WatermarkProxy"

    const-string v1, "decodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .locals 2

    const-string v0, "WatermarkProxy"

    const-string v1, "encodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
