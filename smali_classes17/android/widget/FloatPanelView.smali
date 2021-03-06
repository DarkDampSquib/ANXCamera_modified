.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field public static final DOWN_ARROW:I = -0x1

.field public static final NO_ARROW:I = 0x0

.field public static final UP_ARROW:I = 0x1


# instance fields
.field private mContent:Landroid/view/ViewGroup;

.field private mDirection:I

.field private mDownArrow:Landroid/widget/ImageView;

.field private mLeftRoundCorner:I

.field private mOffset:I

.field private mRightRoundCorner:I

.field private mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    return-void
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private init()V
    .locals 1

    const v0, 0x110701d8

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    const v0, 0x110701d7

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-ne v4, v2, :cond_3

    move v2, p3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sub-int v4, p4, p2

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iget v5, p0, Landroid/widget/FloatPanelView;->mOffset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int v4, v5, v6

    goto :goto_2

    :cond_4
    sub-int v5, p4, v1

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_5

    sub-int v5, p4, v1

    sub-int v4, v5, v6

    :cond_5
    :goto_2
    add-int v5, v4, v1

    add-int v6, v2, v3

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    if-ne v2, p3, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, p3

    :goto_3
    move v2, v5

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string v0, "FloatPanelView"

    const-string v1, "couldn\'t find view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/FloatPanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setArrow(I)V
    .locals 1

    iget v0, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->removeAllViews()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setLeftCorner(I)V
    .locals 1

    iget v0, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOffset(I)V
    .locals 1

    iget v0, p0, Landroid/widget/FloatPanelView;->mOffset:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/FloatPanelView;->mOffset:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRightCorner(I)V
    .locals 1

    iget v0, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_0
    return-void
.end method
