.class Landroid/view/View$15;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_View_View$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    return-void
.end method

.method public onCreateDrawableState(Landroid/view/View;I)[I
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->originalOnCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public refreshDrawableState(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->originalRefreshDrawableState()V

    return-void
.end method
