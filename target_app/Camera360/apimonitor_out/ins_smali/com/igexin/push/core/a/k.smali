.class public Lcom/igexin/push/core/a/k;
.super Lcom/igexin/push/core/a/a;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/k;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V
return-void
.end method
.method public a(Lcom/igexin/a/a/d/d;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public a(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Lcom/igexin/push/c/c/m;
if-eqz v0, :cond_4
:cond_4
const/4 v0, 0x1
return v0
.end method