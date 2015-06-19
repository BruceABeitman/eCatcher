.class public abstract Lcom/ford/syncV4/util/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:B
.field private b:Ljava/lang/String;
.method protected constructor <init>(BLjava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-byte p1, p0, Lcom/ford/syncV4/util/b;->a:B
iput-object p2, p0, Lcom/ford/syncV4/util/b;->b:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/util/Vector;B)Lcom/ford/syncV4/util/b;
.registers 5
invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v1
:cond_4
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_15
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/util/b;
iget-byte v2, v0, Lcom/ford/syncV4/util/b;->a:B
if-ne v2, p1, :cond_4
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public final a()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/util/b;->a:B
return v0
.end method
.method public final a(Lcom/ford/syncV4/util/b;)Z
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/util/b;->b:Ljava/lang/String;
iget-object v1, p1, Lcom/ford/syncV4/util/b;->b:Ljava/lang/String;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/util/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/util/b;->a:B
return v0
.end method