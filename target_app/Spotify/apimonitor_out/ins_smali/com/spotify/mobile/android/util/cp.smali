.class public Lcom/spotify/mobile/android/util/cp;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cl;
.registers 18
new-instance v0, Lcom/spotify/mobile/android/util/cl;
const/4 v9, 0x0
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
move/from16 v7, p6
move-object/from16 v8, p7
invoke-direct/range {v0 .. v9}, Lcom/spotify/mobile/android/util/cl;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;B)V
return-object v0
.end method