.class public Lcom/igexin/push/f/a;
.super Ljava/lang/Object;
.field private static final b:Ljava/lang/String;
.field private static c:[C
.field public a:I
.field private d:Ljava/util/Random;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/f/a;->b:Ljava/lang/String;
const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()-_=+[{}];:\'/?.>,<"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/igexin/push/f/a;->c:[C
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x10
iput v0, p0, Lcom/igexin/push/f/a;->a:I
new-instance v0, Ljava/util/Random;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V
iput-object v0, p0, Lcom/igexin/push/f/a;->d:Ljava/util/Random;
return-void
.end method