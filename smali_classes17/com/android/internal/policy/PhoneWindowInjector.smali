.class Lcom/android/internal/policy/PhoneWindowInjector;
.super Ljava/lang/Object;
.source "PhoneWindowInjector.java"


# static fields
.field private static sLastInsetBottom:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onNavigationBarColorChange(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->addExtraFlags(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDecorCaptionShade(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearExtraFlags(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDecorCaptionShade(I)V

    :goto_0
    return-void
.end method

.method static requestApplyInsetsIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sget v1, Lcom/android/internal/policy/PhoneWindowInjector;->sLastInsetBottom:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sput v0, Lcom/android/internal/policy/PhoneWindowInjector;->sLastInsetBottom:I

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method
