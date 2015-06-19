.class Lcom/fsck/k9/mail/internet/MimeHeader$Field;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/MimeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Field"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/internet/MimeHeader;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->this$0:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    return-void
.end method
