.class public final Lcom/google/android/gms/internal/ja;
.super Ljava/lang/Object;
.field public static final a:Lcom/google/android/gms/drive/metadata/a;
.field public static final b:Lcom/google/android/gms/drive/metadata/a;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;
const-string v1, "contentAvailability"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/drive/metadata/a;
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;
const-string v1, "isPinnable"
const v2, 0x419ce0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/drive/metadata/a;
return-void
.end method