.class public final Lcom/ford/syncV4/c/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ford/syncV4/c/a;
.field private static b:Ljava/util/Vector;
.field  a:Lcom/ford/syncV4/c/b;
.field private c:B
.field private d:B
.field private e:Lcom/ford/syncV4/c/a;
.field private f:Lcom/ford/syncV4/transport/e;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
sput-object v0, Lcom/ford/syncV4/c/d;->b:Ljava/util/Vector;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(BLcom/ford/syncV4/c/a;Lcom/ford/syncV4/transport/e;)Lcom/ford/syncV4/c/d;
.registers 4
new-instance v0, Lcom/ford/syncV4/c/d;
invoke-direct {v0}, Lcom/ford/syncV4/c/d;-><init>()V
iput-byte p0, v0, Lcom/ford/syncV4/c/d;->d:B
iput-object p1, v0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
iput-object p2, v0, Lcom/ford/syncV4/c/d;->f:Lcom/ford/syncV4/transport/e;
return-object v0
.end method
.method private static b(Lcom/ford/syncV4/transport/e;)Lcom/ford/syncV4/c/b;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
sget-object v0, Lcom/ford/syncV4/c/d;->b:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_8
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/b;
iget-object v4, v0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v4}, Lcom/ford/syncV4/transport/h;->c()Lcom/ford/syncV4/transport/TransportType;
move-result-object v4
invoke-virtual {p0}, Lcom/ford/syncV4/transport/e;->a()Lcom/ford/syncV4/transport/TransportType;
move-result-object v5
if-ne v4, v5, :cond_33
if-eqz v1, :cond_28
invoke-virtual {v0}, Lcom/ford/syncV4/c/b;->c()I
move-result v4
if-lt v1, v4, :cond_33
:cond_28
invoke-virtual {v0}, Lcom/ford/syncV4/c/b;->c()I
move-result v1
move v6, v1
move-object v1, v0
move v0, v6
:goto_2f
move-object v2, v1
move v1, v0
goto :goto_8
:cond_32
return-object v2
:cond_33
move v0, v1
move-object v1, v2
goto :goto_2f
.end method
.method public final a()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/c/d;->c:B
return v0
.end method
.method public final a(Lcom/ford/syncV4/transport/e;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Lcom/ford/syncV4/transport/e;->c()Z
move-result v0
if-eqz v0, :cond_13
invoke-static {p1}, Lcom/ford/syncV4/c/d;->b(Lcom/ford/syncV4/transport/e;)Lcom/ford/syncV4/c/b;
move-result-object v0
:goto_a
if-eqz v0, :cond_1d
iget-object v1, v0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
if-nez v1, :cond_16
const-string v0, ""
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
goto :goto_a
:cond_16
iget-object v0, v0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->d()Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_1d
const-string v0, ""
goto :goto_12
.end method
.method public final a(Lcom/ford/syncV4/protocol/e;)V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1}, Lcom/ford/syncV4/c/a;->a(Lcom/ford/syncV4/protocol/e;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
.registers 6
iput-byte p2, p0, Lcom/ford/syncV4/c/d;->c:B
iget-object v0, p0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/ford/syncV4/c/a;->a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2, p3}, Lcom/ford/syncV4/c/a;->a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1}, Lcom/ford/syncV4/c/a;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/c/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
invoke-virtual {v0, p0}, Lcom/ford/syncV4/c/b;->b(Lcom/ford/syncV4/c/d;)V
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
invoke-virtual {v0}, Lcom/ford/syncV4/c/b;->c()I
move-result v0
if-nez v0, :cond_18
sget-object v0, Lcom/ford/syncV4/c/d;->b:Ljava/util/Vector;
iget-object v1, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
:cond_18
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
:cond_1b
return-void
.end method
.method public final b(Lcom/ford/syncV4/protocol/e;)V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
iget-object v0, v0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
invoke-virtual {v0, p1}, Lcom/ford/syncV4/protocol/a;->a(Lcom/ford/syncV4/protocol/e;)V
goto :goto_4
.end method
.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/c/d;->e:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/c/a;->b(Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/d;->f:Lcom/ford/syncV4/transport/e;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/e;->c()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/ford/syncV4/c/d;->f:Lcom/ford/syncV4/transport/e;
invoke-static {v0}, Lcom/ford/syncV4/c/d;->b(Lcom/ford/syncV4/transport/e;)Lcom/ford/syncV4/c/b;
move-result-object v0
if-nez v0, :cond_1c
new-instance v0, Lcom/ford/syncV4/c/b;
iget-object v1, p0, Lcom/ford/syncV4/c/d;->f:Lcom/ford/syncV4/transport/e;
invoke-direct {v0, v1}, Lcom/ford/syncV4/c/b;-><init>(Lcom/ford/syncV4/transport/e;)V
sget-object v1, Lcom/ford/syncV4/c/d;->b:Ljava/util/Vector;
invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
:cond_1c
:goto_1c
iput-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
invoke-virtual {v0, p0}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/d;)V
return-void
:cond_22
new-instance v0, Lcom/ford/syncV4/c/b;
iget-object v1, p0, Lcom/ford/syncV4/c/d;->f:Lcom/ford/syncV4/transport/e;
invoke-direct {v0, v1}, Lcom/ford/syncV4/c/b;-><init>(Lcom/ford/syncV4/transport/e;)V
goto :goto_1c
.end method
.method public final d()Lcom/ford/syncV4/transport/TransportType;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
iget-object v0, v0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->c()Lcom/ford/syncV4/transport/TransportType;
move-result-object v0
goto :goto_5
.end method
.method public final e()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/ford/syncV4/c/d;->a:Lcom/ford/syncV4/c/b;
invoke-virtual {v1}, Lcom/ford/syncV4/c/b;->a()Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method