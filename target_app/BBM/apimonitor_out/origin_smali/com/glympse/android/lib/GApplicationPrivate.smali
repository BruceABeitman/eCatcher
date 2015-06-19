.class public interface abstract Lcom/glympse/android/lib/GApplicationPrivate;
.super Ljava/lang/Object;
.source "GApplicationPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GApplication;


# virtual methods
.method public abstract addLaunchArgument(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getInstallPackage()Ljava/lang/String;
.end method

.method public abstract getInstallScheme()Ljava/lang/String;
.end method

.method public abstract getInstallUri()Ljava/lang/String;
.end method

.method public abstract getLaunchAction()Ljava/lang/String;
.end method

.method public abstract getLaunchArguments()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GMethodArgument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLaunchClassName()Ljava/lang/String;
.end method

.method public abstract getLaunchFlags()I
.end method

.method public abstract getLaunchMimeType()Ljava/lang/String;
.end method

.method public abstract getLaunchMode()Ljava/lang/String;
.end method

.method public abstract getLaunchPackage()Ljava/lang/String;
.end method

.method public abstract getLaunchUri()Ljava/lang/String;
.end method

.method public abstract getLaunchUriDirect()Ljava/lang/String;
.end method

.method public abstract setIcon(Lcom/glympse/android/api/GImage;)V
.end method

.method public abstract setInstallPackage(Ljava/lang/String;)V
.end method

.method public abstract setInstallScheme(Ljava/lang/String;)V
.end method

.method public abstract setInstallUri(Ljava/lang/String;)V
.end method

.method public abstract setLaunchAction(Ljava/lang/String;)V
.end method

.method public abstract setLaunchClassName(Ljava/lang/String;)V
.end method

.method public abstract setLaunchFlags(I)V
.end method

.method public abstract setLaunchMimeType(Ljava/lang/String;)V
.end method

.method public abstract setLaunchMode(Ljava/lang/String;)V
.end method

.method public abstract setLaunchPackage(Ljava/lang/String;)V
.end method

.method public abstract setLaunchUri(Ljava/lang/String;)V
.end method

.method public abstract setLaunchUriDirect(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSubtype(Ljava/lang/String;)V
.end method
