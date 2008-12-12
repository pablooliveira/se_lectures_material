% Part of the MetaUML Gallery of Patterns
% Copyright (C) 2005 Radu-George Radulescu
%
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; either version 2
% of the License, or (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

input metauml;

beginfig(1);
    Class.component("Server")()("+response handleRequest(request req)");
    Class.concreteComp("HTTPServer")()();
    Class.decorator("ServerDecorator")()("+response handleRequest(request req)");
    Class.concreteB("ConcreteDecoratorB")()("+Operation()", "+AddedBehaviour()");

    centered_allign_top(concreteComp, decorator)(20, below(component.s, 50));
    
    drawObjects(component, concreteComp, decorator, concreteB);

    link(inheritance)(pathStepY(concreteComp.n + (15, 0), component.s, 20));
    link(inheritance)(pathStepY(decorator.n, component.s, 20));

    link(aggregationUni)(pathStepX(component.e, decorator.e + (0, 10), 90));

    link(inheritance)(pathStepY(concreteB.n, decorator.s, 20));
endfig;

end
