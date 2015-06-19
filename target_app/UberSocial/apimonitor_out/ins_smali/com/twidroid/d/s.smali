.class public Lcom/twidroid/d/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/d/s;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/d/s;->b:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/d/r$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/d/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/d/s;->a:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/d/s;->b:Ljava/lang/String;
return-object v0
.end method