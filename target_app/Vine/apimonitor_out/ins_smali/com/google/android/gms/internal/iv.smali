.class public Lcom/google/android/gms/internal/iv;
.super Ljava/lang/Object;
.field public static final KA:Lcom/google/android/gms/drive/metadata/MetadataField;
.field public static final Kz:Lcom/google/android/gms/drive/metadata/MetadataField;
.method static constructor <clinit>()V
.registers 3
const v2, 0x419ce0
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/f;
const-string v1, "contentAvailability"
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/internal/iv;->Kz:Lcom/google/android/gms/drive/metadata/MetadataField;
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;
const-string v1, "isPinnable"
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/internal/iv;->KA:Lcom/google/android/gms/drive/metadata/MetadataField;
return-void
.end method