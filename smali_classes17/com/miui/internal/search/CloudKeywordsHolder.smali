.class public Lcom/miui/internal/search/CloudKeywordsHolder;
.super Ljava/lang/Object;
.source "CloudKeywordsHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/CloudKeywordsHolder$Builder;
    }
.end annotation


# instance fields
.field private keywordsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->access$000(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->version:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->access$100(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->locale:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->access$200(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->keywordsMap:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;Lcom/miui/internal/search/CloudKeywordsHolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/search/CloudKeywordsHolder;-><init>(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)V

    return-void
.end method


# virtual methods
.method public getKeywords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->keywordsMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder;->keywordsMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
