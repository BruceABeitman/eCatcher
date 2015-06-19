.class abstract Lcom/squareup/wire/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/squareup/wire/WireType;


# direct methods
.method public constructor <init>(ILcom/squareup/wire/WireType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/squareup/wire/s;->a:I

    iput-object p2, p0, Lcom/squareup/wire/s;->b:Lcom/squareup/wire/WireType;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(ILcom/squareup/wire/z;)V
.end method

.method public final b()Lcom/squareup/wire/WireType;
    .registers 2

    iget-object v0, p0, Lcom/squareup/wire/s;->b:Lcom/squareup/wire/WireType;

    return-object v0
.end method
