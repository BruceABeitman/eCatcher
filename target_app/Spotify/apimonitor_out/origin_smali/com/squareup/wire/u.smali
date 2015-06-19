.class final Lcom/squareup/wire/u;
.super Lcom/squareup/wire/s;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .registers 4

    sget-object v0, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/s;-><init>(ILcom/squareup/wire/WireType;)V

    iput-object p2, p0, Lcom/squareup/wire/u;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final a(ILcom/squareup/wire/z;)V
    .registers 5

    sget-object v0, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/z;->b(ILcom/squareup/wire/WireType;)V

    iget-object v0, p0, Lcom/squareup/wire/u;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/z;->c(J)V

    return-void
.end method
