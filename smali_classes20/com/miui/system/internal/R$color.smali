.class public final Lcom/miui/system/internal/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static blur_background_mask:I

.field public static cloud_state_message_textcolor_unsynced:I

.field public static large_date_text_color:I

.field public static miui_common_text_color_new:I

.field public static miui_common_time_dark_text_color:I

.field public static miui_owner_info_dark_text_color:I

.field public static miui_owner_info_light_text_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x12060000

    sput v0, Lcom/miui/system/internal/R$color;->blur_background_mask:I

    const v0, 0x12060008

    sput v0, Lcom/miui/system/internal/R$color;->cloud_state_message_textcolor_unsynced:I

    const v0, 0x12060003

    sput v0, Lcom/miui/system/internal/R$color;->large_date_text_color:I

    const v0, 0x12060002

    sput v0, Lcom/miui/system/internal/R$color;->miui_common_text_color_new:I

    const v0, 0x12060001

    sput v0, Lcom/miui/system/internal/R$color;->miui_common_time_dark_text_color:I

    const v0, 0x12060004

    sput v0, Lcom/miui/system/internal/R$color;->miui_owner_info_dark_text_color:I

    const v0, 0x12060005

    sput v0, Lcom/miui/system/internal/R$color;->miui_owner_info_light_text_color:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
