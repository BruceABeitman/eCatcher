.class public Lco/vine/android/api/VineEntity$Range;
.super Ljava/lang/Object;
.source "VineEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public entity:Lco/vine/android/api/VineEntity;

.field public span:Landroid/text/style/ForegroundColorSpan;

.field public upper:I


# direct methods
.method public constructor <init>(ILco/vine/android/api/VineEntity;Landroid/text/style/ForegroundColorSpan;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/vine/android/api/VineEntity$Range;->upper:I

    iput-object p2, p0, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iput-object p3, p0, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method
