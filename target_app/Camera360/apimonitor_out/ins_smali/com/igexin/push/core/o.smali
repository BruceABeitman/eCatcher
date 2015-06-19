.class public Lcom/igexin/push/core/o;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/String;
.field private static b:Lcom/igexin/sdk/aidl/c;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/o;->a:Ljava/lang/String;
return-void
.end method
.method public static a()Lcom/igexin/sdk/aidl/c;
.registers 1
sget-object v0, Lcom/igexin/push/core/o;->b:Lcom/igexin/sdk/aidl/c;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/core/p;
invoke-direct {v0}, Lcom/igexin/push/core/p;-><init>()V
sput-object v0, Lcom/igexin/push/core/o;->b:Lcom/igexin/sdk/aidl/c;
:cond_b
sget-object v0, Lcom/igexin/push/core/o;->b:Lcom/igexin/sdk/aidl/c;
return-object v0
.end method