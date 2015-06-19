.class public final enum Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
.super Ljava/lang/Enum;
.source "RecMicToMp3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mp3PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum END:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field public static final enum IDLE:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field public static final enum INITIALIZED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field public static final enum PAUSED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field public static final enum PREPARED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field public static final enum STARTED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field public static final enum STOPPED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->IDLE:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->INITIALIZED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->PREPARED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STARTED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STOPPED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->PAUSED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const-string/jumbo v1, "END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->END:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->IDLE:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->INITIALIZED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->PREPARED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STARTED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STOPPED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->PAUSED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->END:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->ENUM$VALUES:[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
    .registers 2

    const-class v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->ENUM$VALUES:[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
