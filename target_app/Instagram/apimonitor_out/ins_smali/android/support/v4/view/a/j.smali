.class public final Landroid/support/v4/view/a/j;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"
.field private static final a:Landroid/support/v4/view/a/k;
.field private final b:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/a/n;
invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V
sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/k;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/view/a/l;
invoke-direct {v0}, Landroid/support/v4/view/a/l;-><init>()V
sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/k;
goto :goto_d
:cond_1c
new-instance v0, Landroid/support/v4/view/a/p;
invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V
sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/k;
goto :goto_d
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/k;
invoke-interface {v0, p0}, Landroid/support/v4/view/a/k;->a(Landroid/support/v4/view/a/j;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;
return-void
.end method
.method public static b()Landroid/support/v4/view/a/a;
.registers 1
const/4 v0, 0x0
return-object v0
.end method
.method public static c()Z
.registers 1
const/4 v0, 0x0
return v0
.end method
.method public static d()Ljava/util/List;
.registers 1
const/4 v0, 0x0
return-object v0
.end method
.method public static e()Landroid/support/v4/view/a/a;
.registers 1
const/4 v0, 0x0
return-object v0
.end method
.method public final a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;
return-object v0
.end method