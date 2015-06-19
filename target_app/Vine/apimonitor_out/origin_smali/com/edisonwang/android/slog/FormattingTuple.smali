.class public Lcom/edisonwang/android/slog/FormattingTuple;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# static fields
.field public static NULL:Lcom/edisonwang/android/slog/FormattingTuple;


# instance fields
.field private argArray:[Ljava/lang/Object;

.field private message:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/edisonwang/android/slog/FormattingTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/edisonwang/android/slog/FormattingTuple;->NULL:Lcom/edisonwang/android/slog/FormattingTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/edisonwang/android/slog/FormattingTuple;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/edisonwang/android/slog/FormattingTuple;->throwable:Ljava/lang/Throwable;

    if-nez p3, :cond_c

    iput-object p2, p0, Lcom/edisonwang/android/slog/FormattingTuple;->argArray:[Ljava/lang/Object;

    :goto_b
    return-void

    :cond_c
    invoke-static {p2}, Lcom/edisonwang/android/slog/FormattingTuple;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/edisonwang/android/slog/FormattingTuple;->argArray:[Ljava/lang/Object;

    goto :goto_b
.end method

.method static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_e

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "non-sensical empty or null argument array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getArgArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/edisonwang/android/slog/FormattingTuple;->argArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/edisonwang/android/slog/FormattingTuple;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/edisonwang/android/slog/FormattingTuple;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
