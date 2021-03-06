.class public Lmiui/slide/SlideAnimationController;
.super Ljava/lang/Object;
.source "SlideAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/SlideAnimationController$H;
    }
.end annotation


# static fields
.field public static final SLIDER_CLOSE:I = 0x1

.field public static final SLIDER_MOVE:I = 0x2

.field public static final SLIDER_OPEN:I = 0x0

.field public static final SLIDER_TIP:I = 0x3

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAnimationView:Lmiui/slide/SlideAnimationView;

.field private mAnimationViewAdded:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SlideAnimationController"

    sput-object v0, Lmiui/slide/SlideAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/slide/SlideAnimationController;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/slide/SlideAnimationController$H;

    invoke-direct {v0, p0, p2}, Lmiui/slide/SlideAnimationController$H;-><init>(Lmiui/slide/SlideAnimationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/slide/SlideAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiui/slide/SlideAnimationController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lmiui/slide/SlideAnimationView;

    iget-object v1, p0, Lmiui/slide/SlideAnimationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/slide/SlideAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;

    return-void
.end method

.method static synthetic access$000(Lmiui/slide/SlideAnimationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/slide/SlideAnimationController;I)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0, p1}, Lmiui/slide/SlideAnimationController;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/slide/SlideAnimationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/slide/SlideAnimationController;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z

    return v0
.end method

.method static synthetic access$302(Lmiui/slide/SlideAnimationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/slide/SlideAnimationController;->mAnimationViewAdded:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/slide/SlideAnimationController;)Lmiui/slide/SlideAnimationView;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationController;->mAnimationView:Lmiui/slide/SlideAnimationView;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/slide/SlideAnimationController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 9

    if-lez p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lmiui/slide/SlideAnimationController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    const/4 v7, -0x1

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7df

    const/16 v5, 0x538

    const/4 v6, -0x3

    move-object v1, v8

    move v2, v7

    move v3, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "slideAnimation"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public showView(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmiui/slide/SlideAnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
