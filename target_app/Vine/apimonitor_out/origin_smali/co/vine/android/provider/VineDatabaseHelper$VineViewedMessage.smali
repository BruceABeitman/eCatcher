.class public Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;
.super Ljava/lang/Object;
.source "VineDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VineViewedMessage"
.end annotation


# instance fields
.field public final conversationId:J

.field public final localStartTime:J

.field public final messageId:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->conversationId:J

    iput-wide p3, p0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->messageId:J

    iput-wide p5, p0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->localStartTime:J

    return-void
.end method
