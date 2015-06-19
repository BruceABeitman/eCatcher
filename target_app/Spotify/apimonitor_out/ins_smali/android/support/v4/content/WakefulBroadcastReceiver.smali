.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field private static final a:Landroid/util/SparseArray;
.field private static b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->a:Landroid/util/SparseArray;
const/4 v0, 0x1
sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->b:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method