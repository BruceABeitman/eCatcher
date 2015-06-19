.class final Landroid/support/v4/app/cg;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"
.field public final a:Landroid/content/ComponentName;
.field public b:Z
.field public c:Landroid/support/v4/app/ah;
.field public d:Ljava/util/LinkedList;
.field public e:I
.method public constructor <init>(Landroid/content/ComponentName;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Landroid/support/v4/app/cg;->b:Z
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;
iput v1, p0, Landroid/support/v4/app/cg;->e:I
iput-object p1, p0, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;
return-void
.end method