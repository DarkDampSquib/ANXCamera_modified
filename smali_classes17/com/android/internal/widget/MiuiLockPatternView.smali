.class public Lcom/android/internal/widget/MiuiLockPatternView;
.super Landroid/view/View;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MiuiLockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "LockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnError:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPathPaintColor:I

.field private mPathPaintErrorColor:I

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MiuiLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mDrawingProfilingStarted:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x3

    filled-new-array {v1, v1}, [I

    move-result-object v2

    const-class v3, Z

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    const/16 v3, 0x80

    iput v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mStrokeAlpha:I

    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    sget-object v4, Landroid/miui/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "square"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v7, "lock_width"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v7, "lock_height"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1105003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1105003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintErrorColor:I

    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v3, 0x11070044

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    const v3, 0x11070045

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    const v3, 0x110700d3

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    const v3, 0x110700d4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    const v3, 0x110700d5

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    const v3, 0x110700d1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    const v3, 0x110700d2

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    aput-object v7, v3, v0

    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v7, v3, v2

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v2, v3, v5

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v2, v3, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v2, v3, v1

    move-object v1, v3

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/internal/widget/MiuiLockPatternView;->getRowHit(F)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->getColumnHit(F)I

    move-result v2

    if-gez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    return-object v1
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MiuiLockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v6, v7

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v8, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_1

    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v5, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    add-int v7, v9, v12

    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_3

    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v6, :cond_2

    move v10, v4

    :cond_2
    add-int v8, v9, v10

    :cond_3
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v3, v5

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v5

    if-nez v3, :cond_5

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->performHapticFeedback(II)Z

    :cond_6
    return-object v0

    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v8, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    float-to-int v8, v8

    iget v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    float-to-int v9, v9

    iget v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-eqz v3, :cond_1

    iget-object v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    iget-object v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    :goto_1
    iget v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    iget v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    sub-int v13, v4, v5

    int-to-double v13, v13

    sub-int v15, v6, v7

    int-to-double v1, v15

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v2, v13

    const/high16 v13, 0x42b40000    # 90.0f

    add-float/2addr v2, v13

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    int-to-float v14, v14

    div-float/2addr v15, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget-object v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v1

    int-to-float v1, v8

    add-float v1, p2, v1

    move/from16 v17, v3

    int-to-float v3, v9

    add-float v3, p3, v3

    invoke-virtual {v15, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v3, v15

    move/from16 v18, v4

    int-to-float v4, v12

    div-float/2addr v4, v15

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v11, v3

    int-to-float v3, v3

    div-float/2addr v3, v15

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v10, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    if-eqz p4, :cond_5

    iget-boolean v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown display mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    :goto_2
    iget v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    iget v5, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    iget v6, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v7, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    int-to-float v8, v4

    sub-float v8, v6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v10, v5

    sub-float v10, v7, v10

    div-float/2addr v10, v9

    float-to-int v9, v10

    iget v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v13, p2, v8

    int-to-float v13, v13

    add-int v14, p3, v9

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    neg-int v14, v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    if-eqz v3, :cond_6

    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private getColumnHit(F)I
    .locals 6

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getRowHit(F)I
    .locals 6

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternStarted()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternCleared()V

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate(IIII)V

    :cond_1
    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_d

    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    :goto_2
    iget-object v6, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v0, v4, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v7, :cond_2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iput-boolean v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternStarted()V

    :cond_2
    iget v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float v11, v9, v10

    iget v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v13, v12

    cmpl-float v11, v11, v13

    if-lez v11, :cond_c

    iget v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    iput v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    iput v5, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    iget-boolean v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-eqz v14, :cond_b

    if-lez v8, :cond_b

    iget-object v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    mul-float/2addr v12, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v12, v15

    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v1, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    move/from16 v16, v2

    iget v2, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v2

    move/from16 v17, v9

    iget-object v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    cmpg-float v18, v1, v4

    if-gez v18, :cond_3

    move/from16 v18, v1

    move/from16 v19, v4

    goto :goto_3

    :cond_3
    move/from16 v18, v4

    move/from16 v19, v1

    :goto_3
    cmpg-float v20, v2, v5

    if-gez v20, :cond_4

    move/from16 v20, v2

    move/from16 v21, v5

    goto :goto_4

    :cond_4
    move/from16 v20, v5

    move/from16 v21, v2

    :goto_4
    move/from16 v22, v4

    sub-float v4, v18, v12

    float-to-int v4, v4

    move/from16 v23, v5

    sub-float v5, v20, v12

    float-to-int v5, v5

    move/from16 v24, v10

    add-float v10, v19, v12

    float-to-int v10, v10

    move-object/from16 v25, v15

    add-float v15, v21, v12

    float-to-int v15, v15

    invoke-virtual {v9, v4, v5, v10, v15}, Landroid/graphics/Rect;->set(IIII)V

    cmpg-float v4, v1, v11

    if-gez v4, :cond_5

    move v4, v1

    move v5, v11

    goto :goto_5

    :cond_5
    move v4, v11

    move v5, v1

    :goto_5
    cmpg-float v10, v2, v13

    if-gez v10, :cond_6

    move v10, v2

    move v15, v13

    goto :goto_6

    :cond_6
    move v10, v13

    move v15, v2

    :goto_6
    move/from16 v18, v1

    sub-float v1, v4, v12

    float-to-int v1, v1

    move/from16 v19, v2

    sub-float v2, v10, v12

    float-to-int v2, v2

    move/from16 v20, v4

    add-float v4, v5, v12

    float-to-int v4, v4

    move/from16 v21, v5

    add-float v5, v15, v12

    float-to-int v5, v5

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    if-eqz v7, :cond_a

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iget v2, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v2

    const/4 v4, 0x2

    if-lt v8, v4, :cond_9

    add-int/lit8 v4, v8, -0x1

    sub-int v5, v8, v6

    sub-int/2addr v4, v5

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v5, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v5

    iget v7, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v7

    cmpg-float v11, v1, v5

    if-gez v11, :cond_7

    move v11, v1

    move v13, v5

    goto :goto_7

    :cond_7
    move v11, v5

    move v13, v1

    :goto_7
    cmpg-float v18, v2, v7

    if-gez v18, :cond_8

    move v10, v2

    move v15, v7

    move/from16 v28, v7

    move-object v7, v4

    move v4, v11

    move v11, v5

    move v5, v13

    move/from16 v13, v28

    goto :goto_8

    :cond_8
    move v10, v7

    move v15, v2

    move/from16 v28, v7

    move-object v7, v4

    move v4, v11

    move v11, v5

    move v5, v13

    move/from16 v13, v28

    goto :goto_8

    :cond_9
    move v4, v1

    move v5, v1

    move v15, v2

    move v10, v2

    move/from16 v28, v5

    move v5, v4

    move/from16 v4, v28

    :goto_8
    move/from16 v18, v1

    iget v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v1, v19

    move/from16 v26, v2

    iget v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    div-float v2, v2, v19

    move/from16 v27, v6

    sub-float v6, v4, v1

    float-to-int v6, v6

    move/from16 v19, v4

    sub-float v4, v10, v2

    float-to-int v4, v4

    move-object/from16 v20, v7

    add-float v7, v5, v1

    float-to-int v7, v7

    move/from16 v21, v1

    add-float v1, v15, v2

    float-to-int v1, v1

    invoke-virtual {v9, v6, v4, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v21, v5

    move-object/from16 v7, v20

    move/from16 v20, v19

    move/from16 v19, v26

    goto :goto_9

    :cond_a
    move/from16 v27, v6

    :goto_9
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_b
    move/from16 v16, v2

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v27, v6

    move/from16 v17, v9

    move/from16 v24, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    goto :goto_a

    :cond_c
    move/from16 v16, v2

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v27, v6

    move/from16 v17, v9

    move/from16 v24, v10

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternDetected()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    const v0, 0x110e00ba

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    const v0, 0x110e00bb

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    const v0, 0x110e00bc

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    const v0, 0x110e00bd

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private resetPattern()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    :goto_0
    return v0
.end method

.method private sendAccessEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v9, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v11, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v11

    long-to-int v1, v4

    rem-int/2addr v1, v0

    div-int/lit16 v4, v1, 0x2bc

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v12

    aget-object v12, v10, v12

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v13

    aput-boolean v3, v12, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    if-ge v4, v9, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    rem-int/lit16 v11, v1, 0x2bc

    int-to-float v11, v11

    const/high16 v12, 0x442f0000    # 700.0f

    div-float/2addr v11, v12

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v13, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v6, v13}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    iget v14, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v6, v14}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v14

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v2, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v6, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float/2addr v2, v13

    mul-float/2addr v2, v11

    iget v3, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v6, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v14

    mul-float/2addr v3, v11

    move/from16 v18, v0

    add-float v0, v13, v2

    iput v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    add-float v0, v14, v3

    iput v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    goto :goto_2

    :cond_2
    move/from16 v18, v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    :cond_3
    iget v11, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v12, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    mul-float v13, v11, v0

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v14, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    iget v15, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    iget v5, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    int-to-float v2, v15

    int-to-float v3, v0

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_4

    int-to-float v4, v5

    int-to-float v1, v3

    mul-float/2addr v1, v11

    add-float/2addr v4, v1

    float-to-int v1, v4

    move/from16 v19, v4

    float-to-int v4, v2

    aget-object v20, v10, v0

    move/from16 v21, v2

    aget-boolean v2, v20, v3

    invoke-direct {v6, v7, v1, v4, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    const/4 v1, 0x3

    goto :goto_4

    :cond_4
    move/from16 v21, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x1

    :goto_6
    move/from16 v18, v0

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    :goto_7
    move/from16 v4, v16

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_9

    iget v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintErrorColor:I

    goto :goto_8

    :cond_9
    iget v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintColor:I

    :goto_8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v18, :cond_c

    const/4 v0, 0x0

    move v3, v0

    :goto_9
    add-int/lit8 v0, v9, -0x1

    if-ge v3, v0, :cond_b

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v0, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v10, v0

    move/from16 v16, v3

    iget v3, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_a

    move/from16 v23, v5

    move/from16 v22, v11

    move v11, v4

    goto :goto_a

    :cond_a
    int-to-float v0, v5

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float v17, v0, v3

    int-to-float v0, v15

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    add-float v19, v0, v3

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v22, v11

    move v11, v4

    move-object/from16 v4, v21

    move/from16 v23, v5

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/MiuiLockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    add-int/lit8 v3, v16, 0x1

    move v4, v11

    move/from16 v11, v22

    move/from16 v5, v23

    goto :goto_9

    :cond_b
    move/from16 v16, v3

    move/from16 v23, v5

    move/from16 v22, v11

    move v11, v4

    goto :goto_a

    :cond_c
    move/from16 v23, v5

    move/from16 v22, v11

    move v11, v4

    :goto_a
    if-eqz v18, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v9, :cond_f

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v10, v3

    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_d

    goto :goto_d

    :cond_d
    const/4 v0, 0x1

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v6, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v6, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v4

    if-nez v1, :cond_e

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_c

    :cond_e
    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    :goto_d
    iget-boolean v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_10

    iget-object v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_11

    :cond_10
    if-eqz v0, :cond_11

    iget v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    iget v2, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_11
    iget-object v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->resolveMeasured(II)I

    move-result v2

    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->resolveMeasured(II)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    move v2, v4

    nop

    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    new-instance v9, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/MiuiLockPatternView$1;)V

    return-object v9
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternCleared()V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
