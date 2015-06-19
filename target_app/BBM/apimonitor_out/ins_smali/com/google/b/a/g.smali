.class public Lcom/google/b/a/g;
.super Ljava/lang/Object;
.source "Joiner.java"
.field private final a:Ljava/lang/String;
.method private constructor <init>(Lcom/google/b/a/g;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/google/b/a/g;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/google/b/a/g;->a:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/b/a/g;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/b/a/g;-><init>(Lcom/google/b/a/g;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/b/a/g;->a:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;)Lcom/google/b/a/g;
.registers 3
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/b/a/h;
invoke-direct {v0, p0, p0, p1}, Lcom/google/b/a/h;-><init>(Lcom/google/b/a/g;Lcom/google/b/a/g;Ljava/lang/String;)V
return-object v0
.end method