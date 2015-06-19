.class public Lcom/twidroid/fragments/e/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:J

.field d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/twidroid/fragments/e/ae;->b:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/twidroid/fragments/e/ae;->b:I

    iput-wide p1, p0, Lcom/twidroid/fragments/e/ae;->c:J

    iput-object p3, p0, Lcom/twidroid/fragments/e/ae;->a:Ljava/lang/String;

    return-void
.end method
