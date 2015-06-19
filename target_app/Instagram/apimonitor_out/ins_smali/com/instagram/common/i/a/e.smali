.class public abstract Lcom/instagram/common/i/a/e;
.super Ljava/lang/Object;
.source "Optional.java"
.implements Ljava/io/Serializable;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/Object;)Lcom/instagram/common/i/a/e;
.registers 2
if-nez p0, :cond_7
invoke-static {}, Lcom/instagram/common/i/a/e;->c()Lcom/instagram/common/i/a/e;
move-result-object v0
:goto_6
return-object v0
:cond_7
new-instance v0, Lcom/instagram/common/i/a/g;
invoke-direct {v0, p0}, Lcom/instagram/common/i/a/g;-><init>(Ljava/lang/Object;)V
goto :goto_6
.end method
.method private static c()Lcom/instagram/common/i/a/e;
.registers 1
sget-object v0, Lcom/instagram/common/i/a/a;->a:Lcom/instagram/common/i/a/a;
return-object v0
.end method
.method public abstract a()Z
.end method
.method public abstract b()Ljava/lang/Object;
.end method