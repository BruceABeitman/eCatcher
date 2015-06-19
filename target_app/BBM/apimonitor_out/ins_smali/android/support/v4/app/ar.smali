.class public final Landroid/support/v4/app/ar;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"
.implements Ljava/lang/Iterable;
.field private static final a:Landroid/support/v4/app/as;
.field private final b:Ljava/util/ArrayList;
.field private final c:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/app/au;
invoke-direct {v0}, Landroid/support/v4/app/au;-><init>()V
sput-object v0, Landroid/support/v4/app/ar;->a:Landroid/support/v4/app/as;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/app/at;
invoke-direct {v0}, Landroid/support/v4/app/at;-><init>()V
sput-object v0, Landroid/support/v4/app/ar;->a:Landroid/support/v4/app/as;
goto :goto_d
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ar;->b:Ljava/util/ArrayList;
iput-object p1, p0, Landroid/support/v4/app/ar;->c:Landroid/content/Context;
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/support/v4/app/ar;
.registers 2
new-instance v0, Landroid/support/v4/app/ar;
invoke-direct {v0, p0}, Landroid/support/v4/app/ar;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method public final a()Landroid/app/PendingIntent;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/ar;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget-object v0, p0, Landroid/support/v4/app/ar;->b:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/ar;->b:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v1, v1, [Landroid/content/Intent;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/content/Intent;
new-instance v1, Landroid/content/Intent;
aget-object v2, v0, v3
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
const v2, 0x1000c000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v1
aput-object v1, v0, v3
sget-object v1, Landroid/support/v4/app/ar;->a:Landroid/support/v4/app/as;
iget-object v2, p0, Landroid/support/v4/app/ar;->c:Landroid/content/Context;
invoke-interface {v1, v2, v0}, Landroid/support/v4/app/as;->a(Landroid/content/Context;[Landroid/content/Intent;)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ar;->b:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/ar;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method