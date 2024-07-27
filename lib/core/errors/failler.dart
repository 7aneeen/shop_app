abstract class Failler {
  final String error;
  Failler(this.error);
}

class ServerError extends Failler {
  ServerError(super.error);  
}
