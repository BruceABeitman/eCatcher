.class final Lcom/mapquest/android/maps/i;
.super Ljava/lang/Object;
.source "FSTileCache.java"
.implements Lcom/mapquest/android/maps/q;
.field final synthetic a:Lcom/mapquest/android/maps/h;
.method constructor <init>(Lcom/mapquest/android/maps/h;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/i;->a:Lcom/mapquest/android/maps/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/io/File;)V
.registers 2
invoke-virtual {p1}, Ljava/io/File;->delete()Z
return-void
.end method