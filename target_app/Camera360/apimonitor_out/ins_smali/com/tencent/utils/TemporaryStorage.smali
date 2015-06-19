.class public Lcom/tencent/utils/TemporaryStorage;
.super Ljava/lang/Object;
.source "ProGuard"
.field private static a:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/tencent/utils/TemporaryStorage;->a:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static get(Ljava/lang/String;)Ljava/lang/Object;
.registers 2
sget-object v0, Lcom/tencent/utils/TemporaryStorage;->a:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
sget-object v0, Lcom/tencent/utils/TemporaryStorage;->a:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method