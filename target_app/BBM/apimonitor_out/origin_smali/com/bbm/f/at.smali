.class final Lcom/bbm/f/at;
.super Ljava/lang/Object;
.source "StreamAssembler.java"


# instance fields
.field a:[B

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/f/at;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/f/at;->f:Z

    iput v0, p0, Lcom/bbm/f/at;->b:I

    iput v0, p0, Lcom/bbm/f/at;->c:I

    iput v0, p0, Lcom/bbm/f/at;->d:I

    iput v0, p0, Lcom/bbm/f/at;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/f/at;->a:[B

    return-void
.end method
