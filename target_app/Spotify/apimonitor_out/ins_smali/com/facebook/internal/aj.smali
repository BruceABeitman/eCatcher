.class public final Lcom/facebook/internal/aj;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Z
.field private b:Z
.field private c:Ljava/lang/String;
.field private d:Z
.method private constructor <init>(ZZLjava/lang/String;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/facebook/internal/aj;->a:Z
iput-boolean p2, p0, Lcom/facebook/internal/aj;->b:Z
iput-object p3, p0, Lcom/facebook/internal/aj;->c:Ljava/lang/String;
iput-boolean p4, p0, Lcom/facebook/internal/aj;->d:Z
return-void
.end method
.method synthetic constructor <init>(ZZLjava/lang/String;ZB)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/internal/aj;-><init>(ZZLjava/lang/String;Z)V
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/aj;->a:Z
return v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/aj;->b:Z
return v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/aj;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/aj;->d:Z
return v0
.end method