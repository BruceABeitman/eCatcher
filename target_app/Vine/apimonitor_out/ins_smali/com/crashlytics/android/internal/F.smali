.class final Lcom/crashlytics/android/internal/F;
.super Lcom/crashlytics/android/internal/O;
.source "SourceFile"
.field private final b:Landroid/app/Application;
.field private final c:Landroid/app/Application$ActivityLifecycleCallbacks;
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Lcom/crashlytics/android/internal/av;)V
.registers 23
const-string v0, "Crashlytics Trace Manager"
invoke-static {v0}, Lcom/crashlytics/android/internal/ah;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v10
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object/from16 v4, p4
move-object/from16 v5, p5
move-object/from16 v6, p6
move-object/from16 v7, p7
move-object/from16 v8, p8
move-object/from16 v9, p9
move-object/from16 v11, p10
invoke-direct/range {v0 .. v11}, Lcom/crashlytics/android/internal/F;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/av;)V
return-void
.end method
.method private constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/av;)V
.registers 23
move-object v0, p0
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object/from16 v4, p5
move-object/from16 v5, p6
move-object/from16 v6, p7
move-object/from16 v7, p8
move-object/from16 v8, p9
move-object/from16 v9, p10
move-object/from16 v10, p11
invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/internal/O;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/av;)V
new-instance v0, Lcom/crashlytics/android/internal/G;
invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/G;-><init>(Lcom/crashlytics/android/internal/F;)V
iput-object v0, p0, Lcom/crashlytics/android/internal/F;->c:Landroid/app/Application$ActivityLifecycleCallbacks;
iput-object p1, p0, Lcom/crashlytics/android/internal/F;->b:Landroid/app/Application;
const-string v0, "Registering activity lifecycle callbacks for session analytics."
invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/crashlytics/android/internal/F;->c:Landroid/app/Application$ActivityLifecycleCallbacks;
invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
return-void
.end method
.method final a()V
.registers 3
const-string v0, "Unregistering activity lifecycle callbacks for session analytics"
invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/crashlytics/android/internal/F;->b:Landroid/app/Application;
iget-object v1, p0, Lcom/crashlytics/android/internal/F;->c:Landroid/app/Application$ActivityLifecycleCallbacks;
invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
invoke-super {p0}, Lcom/crashlytics/android/internal/O;->a()V
return-void
.end method