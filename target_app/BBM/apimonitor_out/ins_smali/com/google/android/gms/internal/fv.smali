.class public Lcom/google/android/gms/internal/fv;
.super Ljava/lang/Object;
.field public static final EJ:Lcom/google/android/gms/drive/metadata/MetadataField;
.field public static final EK:Lcom/google/android/gms/drive/metadata/MetadataField;
.method static constructor <clinit>()V
.registers 3
const v2, 0x419ce0
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;
const-string v1, "contentAvailability"
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/internal/fv;->EJ:Lcom/google/android/gms/drive/metadata/MetadataField;
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;
const-string v1, "isPinnable"
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/internal/fv;->EK:Lcom/google/android/gms/drive/metadata/MetadataField;
return-void
.end method