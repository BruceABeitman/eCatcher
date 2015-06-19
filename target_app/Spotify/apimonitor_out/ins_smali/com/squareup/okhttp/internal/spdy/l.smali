.class final Lcom/squareup/okhttp/internal/spdy/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:[Lcom/squareup/okhttp/internal/spdy/l;
.field private final b:I
.field private final c:I
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x100
new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/l;
iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/l;->a:[Lcom/squareup/okhttp/internal/spdy/l;
iput v1, p0, Lcom/squareup/okhttp/internal/spdy/l;->b:I
iput v1, p0, Lcom/squareup/okhttp/internal/spdy/l;->c:I
return-void
.end method
.method constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/l;->a:[Lcom/squareup/okhttp/internal/spdy/l;
iput p1, p0, Lcom/squareup/okhttp/internal/spdy/l;->b:I
and-int/lit8 v0, p2, 0x7
if-nez v0, :cond_e
const/16 v0, 0x8
:cond_e
iput v0, p0, Lcom/squareup/okhttp/internal/spdy/l;->c:I
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/l;->a:[Lcom/squareup/okhttp/internal/spdy/l;
return-object v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/l;)I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/l;->b:I
return v0
.end method
.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/l;)I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/l;->c:I
return v0
.end method