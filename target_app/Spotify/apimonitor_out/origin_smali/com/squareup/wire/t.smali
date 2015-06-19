.class final Lcom/squareup/wire/t;
.super Lcom/squareup/wire/s;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .registers 4

    sget-object v0, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/s;-><init>(ILcom/squareup/wire/WireType;)V

    iput-object p2, p0, Lcom/squareup/wire/t;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final a(ILcom/squareup/wire/z;)V
    .registers 4

    sget-object v0, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/z;->b(ILcom/squareup/wire/WireType;)V

    iget-object v0, p0, Lcom/squareup/wire/t;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/z;->e(I)V

    return-void
.end method
