.class public Lco/vine/android/util/VineProgressEvent;
.super Ljava/lang/Object;
.source "VineProgressEvent.java"


# static fields
.field public static final CANCELED_EVENT_CODE:I = 0x8

.field public static final COMPLETED_EVENT_CODE:I = 0x2

.field public static final FAILED_EVENT_CODE:I = 0x4

.field public static final PART_COMPLETED_EVENT_CODE:I = 0x800

.field public static final PART_FAILED_EVENT_CODE:I = 0x1000

.field public static final PART_STARTED_EVENT_CODE:I = 0x400

.field public static final STARTED_EVENT_CODE:I = 0x1


# instance fields
.field private bytesTransfered:I

.field private eventCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/vine/android/util/VineProgressEvent;->bytesTransfered:I

    return-void
.end method


# virtual methods
.method public getBytesTransfered()I
    .registers 2

    iget v0, p0, Lco/vine/android/util/VineProgressEvent;->bytesTransfered:I

    return v0
.end method

.method public getEventCode()I
    .registers 2

    iget v0, p0, Lco/vine/android/util/VineProgressEvent;->eventCode:I

    return v0
.end method

.method public setBytesTransfered(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/util/VineProgressEvent;->bytesTransfered:I

    return-void
.end method

.method public setEventCode(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/util/VineProgressEvent;->eventCode:I

    return-void
.end method
