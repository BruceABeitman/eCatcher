.class final Lcom/mapquest/android/maps/be;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"
.field private static d:Z
.field  a:Landroid/content/Context;
.field  b:Z
.field  c:Lcom/mapquest/android/maps/bf;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/mapquest/android/maps/be;->d:Z
return-void
.end method
.method constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mapquest/android/maps/be;->a:Landroid/content/Context;
new-instance v0, Lcom/mapquest/android/maps/bf;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bf;-><init>(Lcom/mapquest/android/maps/be;B)V
iput-object v0, p0, Lcom/mapquest/android/maps/be;->c:Lcom/mapquest/android/maps/bf;
return-void
.end method
.method static synthetic a(Lcom/mapquest/android/maps/be;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/be;->a:Landroid/content/Context;
return-object v0
.end method
.method public static a()Z
.registers 1
sget-boolean v0, Lcom/mapquest/android/maps/be;->d:Z
return v0
.end method
.method static synthetic a(Z)Z
.registers 1
sput-boolean p0, Lcom/mapquest/android/maps/be;->d:Z
return p0
.end method