.class  Lcom/twidroid/fragments/base/i;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/fragments/base/i;->a:Ljava/util/Map;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
.registers 4
sget-object v0, Lcom/twidroid/fragments/base/i;->a:Ljava/util/Map;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/h;
if-nez v0, :cond_24
new-instance v0, Lcom/twidroid/fragments/base/h;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/base/h;-><init>(Lcom/twidroid/model/twitter/c;)V
sget-object v1, Lcom/twidroid/fragments/base/i;->a:Ljava/util/Map;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_24
return-object v0
.end method