.class Landroid/media/MediaExtractor$2;
.super Landroid/media/DrmInitData;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaExtractor;->getDrmInitData()Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaExtractor;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Landroid/media/MediaExtractor;[B)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaExtractor$2;->this$0:Landroid/media/MediaExtractor;

    iput-object p2, p0, Landroid/media/MediaExtractor$2;->val$data:[B

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .locals 3

    new-instance v0, Landroid/media/DrmInitData$SchemeInitData;

    iget-object v1, p0, Landroid/media/MediaExtractor$2;->val$data:[B

    const-string/jumbo v2, "webm"

    invoke-direct {v0, v2, v1}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method
