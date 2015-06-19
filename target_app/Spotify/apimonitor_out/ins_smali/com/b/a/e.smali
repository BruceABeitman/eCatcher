.class public final Lcom/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Closeable;
.field final synthetic a:Lcom/b/a/a;
.field private final b:Ljava/lang/String;
.field private final c:J
.field private final d:[Ljava/io/InputStream;
.field private final e:[J
.method private constructor <init>(Lcom/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
.registers 7
iput-object p1, p0, Lcom/b/a/e;->a:Lcom/b/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/b/a/e;->b:Ljava/lang/String;
iput-wide p3, p0, Lcom/b/a/e;->c:J
iput-object p5, p0, Lcom/b/a/e;->d:[Ljava/io/InputStream;
iput-object p6, p0, Lcom/b/a/e;->e:[J
return-void
.end method
.method synthetic constructor <init>(Lcom/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
.registers 8
invoke-direct/range {p0 .. p6}, Lcom/b/a/e;-><init>(Lcom/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
return-void
.end method
.method public final a()Ljava/io/InputStream;
.registers 3
iget-object v0, p0, Lcom/b/a/e;->d:[Ljava/io/InputStream;
const/4 v1, 0x0
aget-object v0, v0, v1
return-object v0
.end method
.method public final close()V
.registers 5
iget-object v1, p0, Lcom/b/a/e;->d:[Ljava/io/InputStream;
array-length v2, v1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_e
aget-object v3, v1, v0
invoke-static {v3}, Lcom/b/a/g;->a(Ljava/io/Closeable;)V
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_e
return-void
.end method