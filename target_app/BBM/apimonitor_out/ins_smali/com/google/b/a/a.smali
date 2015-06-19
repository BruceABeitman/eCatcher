.class final Lcom/google/b/a/a;
.super Lcom/google/b/a/l;
.source "Absent.java"
.field static final a:Lcom/google/b/a/a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/b/a/a;
invoke-direct {v0}, Lcom/google/b/a/a;-><init>()V
sput-object v0, Lcom/google/b/a/a;->a:Lcom/google/b/a/a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/b/a/l;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const-string v0, "use Optional.orNull() instead of Optional.or(null)"
invoke-static {p1, v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b()Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Optional.get() cannot be called on an absent value"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final c()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
const v0, 0x598df91c
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
const-string v0, "Optional.absent()"
return-object v0
.end method