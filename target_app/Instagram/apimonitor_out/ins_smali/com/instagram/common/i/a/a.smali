.class final Lcom/instagram/common/i/a/a;
.super Lcom/instagram/common/i/a/e;
.source "Absent.java"
.field static final a:Lcom/instagram/common/i/a/a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/common/i/a/a;
invoke-direct {v0}, Lcom/instagram/common/i/a/a;-><init>()V
sput-object v0, Lcom/instagram/common/i/a/a;->a:Lcom/instagram/common/i/a/a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/i/a/e;-><init>()V
return-void
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