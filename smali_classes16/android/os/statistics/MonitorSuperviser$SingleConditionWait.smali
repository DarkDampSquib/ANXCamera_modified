.class public final Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleConditionWait"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;-><init>()V

    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
